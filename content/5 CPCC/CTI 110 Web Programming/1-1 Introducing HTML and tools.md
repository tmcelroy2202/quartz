# Exploring the World Wide Web
* Networks 
* A structure where information and services are shared among devices known as hosts
	* host - any device that can send or receive data
	* a host that provides information or services to other devices on the network
	* client - a device that receives the services
* client - server network - a network in which clients access information provided by one or more servers.

* Networks
	* Networks are classified based on the range of devices that they cover
		* Local Area Network (LAN) - networks confined to a small geographic area
		* Wide Area Network ( WAN ) - networks that cover large geographic areas, typically consist of two or more interconnected local area networks
		* The Internet - A wide area network incorporating an almost uncountable number of networks and hosts across the world.

# Locating information on a Network
* The biggest obstacle to effectively using the internet is the network's sheer scope and size
	* Early tools reuqired users to master a bewildering array of terms, acronyms, and commands ( not user friendly )
	* 1989 - researchers at the CERN nuclear research facility developed hypertext to link to data.
	* Hypertext - a method of organization in which data sources are interconnected through a series of links or hyperlinks activated to jump from one data source to another
		* Hyperlink - a link within a hypertext document that can be activated to access a data source
		* Ideally suited for the internet because end users dont need to konw where a service is located -- they only need to know how to activate the link
		* the totality of these interconnected hypertext documents became known as the World Wide Web


# Introducing HTML
* A webpage is a simple text file written in Hypertext Markup Language ( HTML ) 
	* HTML is a markup language that supports the tagging of distinct document elements and connecting documents through hypertext links 

```html
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Title goes here</title>
	</head>
	<body>
		body goes here
	</body>
</html>
```

tags are there to tell your browser how to go and markup the text - how to display / present the website to the device.

# History of HTML
* In the early years, there was no single organization that defined the rules or syntax of HTML
* Currently, the World Wide Web Consortium ( W3C ) - A group of web designers and programmers sets the standards for browser manufacturers to follow 
* The current version of HTML is HTML 5.2, which achieved recommendation status in 2017

As HTML ages certain older features are phased out.

# Tooling!!!
* He recommends Notepad++
* I am using Helix or Neovim.
* I would recommend anyone else use VSCode.
	* If you are willing to learn vim, do so. It will make your life so much easier long term.
* an IDE is also known as an Integrated Development Environment - a software package that covers all the phases of the development process, there are loads of them.
	* adobe dreamweaver
	* netbeans
	* komodo 
* many of the IDEs are free, but some of them have fees associated for you to get the full featureset.
* The highest featureset ones often have evaluation periods for you to try for free
* For Testing your code, you can use a validation website
	* https://validator.w3.org
* as you are going about coding, its a good idea to test your code under a variety of different conditions ( screen resolutions, different browsers, different versions of the same browser, etc. )
* Test your code on Chrome, IE, Apple Safari, Firefox, and Opera

Two sided tags are when a tag requires an opening and closing tag. 
Head tag has information that talks about whats inside the page 
* the title 
* your character set 
* your css files 
* your viewport

```html
   <meta name="viewport" content="width=device-width, initial-scale=1" />
```
this line does scaling.
we will cover it more in other courses.

Cascading style sheets allow us to do additional markup on the page. 

In this instance, in our body, we have a header, a nav, and a footer.

In our header, we have our logo 
```html
<img src="ct_logo.png" alt="Curbside Thai" />
```
this `<img>` tag allows us to embed images. The alt section is to display in the case that the picture is unable to be found.

Your nav is filled with hypertext references. these allow us to go and click on things so we can go to a different location 
```html
      <a href="ct_about.html"><img src="ct_about.png" alt="About Us" /></a>
```
Each one is also an html page. This is linking you to other html pages elsewhere on the webserver. 

this is inside a navigation list, which is marked up inside ct_layout1 to organize the links, so we have our images organized in the curbside thai startpage.

In our footer, we also have some formatted text:
```html
   <footer>
      Curbside Thai &#8226; 411 Belde Drive, Charlotte NC 28201 &#8226; 704-555-1151
   </footer>
```

&#8226 is a escape sequence which displays bullet points inbetween the text that says curbside thai and the text that seperates the address from the phone number. 

