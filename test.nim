from htmlgen import nil

const html = (
          "<!DOCTYPE html>\n" &
          htmlgen.html(
            htmlgen.head(
              htmlgen.meta(charset="utf-8"),
              htmlgen.title("Use Nim on Netlify")),
            htmlgen.body(
              htmlgen.h1("Use Nim on Netlify"),
              htmlgen.h2("This is a minimum example web site created with Nim language on Netlify."),
              htmlgen.h3("Made with Nim version " & $NimVersion),
              htmlgen.ul(
                htmlgen.li(
                  htmlgen.a(
                    href="https://github.com/sergiosouzalima/forked-netlify-nim-test",
                    "Repository of this page")),
                htmlgen.li(
                  htmlgen.a(href="https://nim-lang.org/", "Nim")),
                htmlgen.li(
                  htmlgen.a(href="https://www.netlify.com/", "Netlify"))))))

writefile "public/index.html", html
