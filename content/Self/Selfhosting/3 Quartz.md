Quartz as a whole has been pretty nice to work with. I have no gripes with a majority of how it has worked. A few things could have been a little more obvious.

Quartz is an alternative to Obsidian Publish which allows for me to selfhost a web ui which lets anyone look at my notes. Im hosting my instance of quartz publicly [here](https://notes.tommyhost.ing) and [here](notes.gamingjones.gay). 

Quartz installation is pretty simple, you need to have installed nodejs ( and npm ) an then you run these commands:
```sh
git clone https://github.com/jackyzha0/quartz.git
cd quartz
npm i
npx quartz create
```

Walking you through those commands:
1. git clone downloads the source code of quartz
2. cd quartz moves you into the directory of that source code you just downloaded
3. npm i installs the dependencies of quartz as specified in a file in that source code
4. npx quartz create makes a new npx project using the quartz folder

npx quartz create is interactive and will ask you a few questions.

I choose to symlink my content folder, but you can edit it directly raw if you wish.

Your content folder is just where all your notes are stored. it is the content that quartz is serving up to a user. 

For syncing my notes across devices I use [Syncthing](https://syncthing.net) and that works pretty well. You just add all your devices and syncing the folder is pretty simple.

I do have to restart my instance of quartz every time syncthing syncs over a file. for restarting quartz remotely I use [Olivetin](https://www.olivetin.app/) to run a command which restarts quartz on my device.

For starting quartz on startup, i use this systemd service:
```INI
[Unit]
Description=Start Quartz on Startup
After=multi-user.target

[Service]
Type=simple
User=tommy
WorkingDirectory=/home/tommy/quartz/
ExecStart=/usr/bin/npx quartz build --serve
Restart=always

[Install]
WantedBy=multi-user.target
```

You can just name that quartz.service and put it in /etc/systemd/system .
You will need sudo to write to that location. You will also need to replace wherever I say tommy with your own username so it works on your system.

You then will want to run the command "systemctl service enable quartz --now" and do whatever it says. You might need to reload the systemd daemon, I don't remember. It should tell you what to do though.

Quartz is primarily configured through two files:
quartz.config.ts  and quartz.layout.ts

they are human readable and pretty wonderful to work with.
here is my quartz.config.ts:
```typescript
import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"

const config: QuartzConfig = {
  configuration: {
    pageTitle: "Tommy's Notes Repository",
    enableSPA: true,
    enablePopovers: true,
    analytics: {
      provider: "plausible",
    },
    baseUrl: "quartz.jzhao.xyz",
    ignorePatterns: ["private", "templates", ".obsidian"],
    defaultDateType: "created",
    theme: {
      typography: {
        header: "Schibsted Grotesk",
        body: "Source Sans Pro",
        code: "IBM Plex Mono",
      },
      colors: {
        lightMode: {
          light: "#1e1e2e",
          lightgray: "#313244",
          gray: "#6c7086",
          darkgray: "#bac2de",
          dark: "#cdd6f4",
          secondary: "#cba6f7",
          tertiary: "#cba6f7",
          highlight: "#8f9fa926",
        },
        darkMode: {
          light: "#161618",
          lightgray: "#393639",
          gray: "#646464",
          darkgray: "#d4d4d4",
          dark: "#ebebec",
          secondary: "#7b97aa",
          tertiary: "#84a59d",
          highlight: "rgba(143, 159, 169, 0.15)",
        },
      },
    },
  },
  plugins: {
    transformers: [
      Plugin.FrontMatter(),
      Plugin.TableOfContents(),
      Plugin.CreatedModifiedDate({
        // you can add 'git' here for last modified from Git
        // if you do rely on git for dates, ensure defaultDateType is 'modified'
        priority: ["frontmatter", "filesystem"],
      }),
      Plugin.Latex({ renderEngine: "katex" }),
      Plugin.SyntaxHighlighting(),
      Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
      Plugin.GitHubFlavoredMarkdown(),
      Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
      Plugin.Description(),
    ],
    filters: [Plugin.RemoveDrafts()],
    emitters: [
      Plugin.AliasRedirects(),
      Plugin.ComponentResources({ fontOrigin: "googleFonts" }),
      Plugin.ContentPage(),
      Plugin.FolderPage(),
      Plugin.TagPage(),
      Plugin.ContentIndex({
        enableSiteMap: true,
        enableRSS: true,
      }),
      Plugin.Assets(),
      Plugin.Static(),
      Plugin.NotFoundPage(),
    ],
  },
}

export default config

```

and here is my quartz.layout.ts
```typescript
import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"

// components shared across all pages
export const sharedPageComponents: SharedLayout = {
  head: Component.Head(),
  header: [],
  footer: Component.Footer({
    links: {
      GitHub: "https://github.com/jackyzha0/quartz",
    },
  }),
}

// components for pages that display a single page (e.g. a single note)
export const defaultContentPageLayout: PageLayout = {
  beforeBody: [
    Component.Breadcrumbs(),
    Component.ArticleTitle(),
    Component.ContentMeta(),
    Component.TagList(),
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.DesktopOnly(Component.Explorer()),
  ],
  right: [
    Component.DesktopOnly(Component.TableOfContents()),
    Component.MobileOnly(Component.Explorer()),
  ],
}

// components for pages that display lists of pages  (e.g. tags or folders)
export const defaultListPageLayout: PageLayout = {
  beforeBody: [Component.Breadcrumbs(), Component.ArticleTitle(), Component.ContentMeta()],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.DesktopOnly(Component.Explorer()),
  ],
  right: [],
}

```

Please do note that I replaced the light mode with a dark mode, so code blocks look funny on light mode on my setup. You can fix that by rifling through more files and finding where it defines text for code blocks on light mode's color.

A few other files of interest:
args.js under the quartz folder defines what port quartz --serve runs on. 
here is my args.js
```javascript
export const CommonArgv = {
  directory: {
    string: true,
    alias: ["d"],
    default: "content",
    describe: "directory to look for content files",
  },
  verbose: {
    boolean: true,
    alias: ["v"],
    default: false,
    describe: "print out extra logging information",
  },
}

export const CreateArgv = {
  ...CommonArgv,
  source: {
    string: true,
    alias: ["s"],
    describe: "source directory to copy/create symlink from",
  },
  strategy: {
    string: true,
    alias: ["X"],
    choices: ["new", "copy", "symlink"],
    describe: "strategy for content folder setup",
  },
  links: {
    string: true,
    alias: ["l"],
    choices: ["absolute", "shortest", "relative"],
    describe: "strategy to resolve links",
  },
}

export const SyncArgv = {
  ...CommonArgv,
  commit: {
    boolean: true,
    default: true,
    describe: "create a git commit for your unsaved changes",
  },
  message: {
    string: true,
    alias: ["m"],
    describe: "option to override the default Quartz commit message",
  },
  push: {
    boolean: true,
    default: true,
    describe: "push updates to your Quartz fork",
  },
  pull: {
    boolean: true,
    default: true,
    describe: "pull updates from your Quartz fork",
  },
}

export const BuildArgv = {
  ...CommonArgv,
  output: {
    string: true,
    alias: ["o"],
    default: "public",
    describe: "output folder for files",
  },
  serve: {
    boolean: true,
    default: false,
    describe: "run a local server to live-preview your Quartz",
  },
  baseDir: {
    string: true,
    default: "",
    describe: "base path to serve your local server on",
  },
  port: {
    number: true,
    default: 8079,
    describe: "port to serve Quartz on",
  },
  wsPort: {
    number: true,
    default: 3001,
    describe: "port to use for WebSocket-based hot-reload notifications",
  },
  remoteDevHost: {
    string: true,
    default: "",
    describe: "A URL override for the websocket connection if you are not developing on localhost",
  },
  bundleInfo: {
    boolean: true,
    default: false,
    describe: "show detailed bundle information",
  },
  concurrency: {
    number: true,
    describe: "how many threads to use to parse notes",
  },
}

```

variables.scss under the quartz folder defines the mobile, tablet, and desktop page width requirements to show mobile tablet and desktop modes. here is my variables.scss:
```scss
$pageWidth: 750px;
$mobileBreakpoint: 600px;
$tabletBreakpoint: 1200px;
$sidePanelWidth: 380px;
$topSpacing: 6rem;
$fullPageWidth: $pageWidth + 2 * $sidePanelWidth;
```

When using a custom theme ( like i am ) you also need to fix how code blocks work, that theme is defined at quartz/quartz/plugins/syntax.ts . In order to use catppuccin themes i had to update ( npx quartz update ) ( backup before you update )
```typescript syntax.ts
import { QuartzTransformerPlugin } from "../types"
import rehypePrettyCode, { Options as CodeOptions } from "rehype-pretty-code"

export const SyntaxHighlighting: QuartzTransformerPlugin = () => ({
  name: "SyntaxHighlighting",
  htmlPlugins() {
    return [
      [
        rehypePrettyCode,
        {
          keepBackground: false,
          theme: {
            dark: "github-dark",
            light: "catppuccin-mocha",
          },
        } satisfies Partial<CodeOptions>,
      ],
    ]
  },
})

```

Exposing quartz to the internet SHOULD be done through something like caddy or nginx, but I am lazy, and am doing it directly through npx quartz build --serve with a cloudflare tunnel.

please know that npx quartz build --serve is NOT made for security, and there are likely absolute path related exploits that could allow for a person to read any file on your system with it.

To get around this, I am hosting quartz in a VM, and that VM has no network access. I am exposing quartz with a cloudflare tunnel which runs on the outside system. If there was an exploit which allowed for anything bad to happen with quartz, i am hoping it would be isolated to only affecting the VM.


# continued
this setup had a lot of problems and I have addressed most if not all of them here [[Quartz]]