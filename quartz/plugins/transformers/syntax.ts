import { QuartzTransformerPlugin } from "../types"
import rehypePrettyCode, { Options as CodeOptions, Theme as CodeTheme } from "rehype-pretty-code"

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
  keepBackground: false,
}

export const SyntaxHighlighting: QuartzTransformerPlugin<Options> = (
  userOpts?: Partial<Options>,
) => {
  const opts: Partial<CodeOptions> = { ...defaultOptions, ...userOpts }

  return {
    name: "SyntaxHighlighting",
    htmlPlugins() {
      return [[rehypePrettyCode, opts]]
    },
  }
}
