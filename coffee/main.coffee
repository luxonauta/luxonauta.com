feather.replace()

cursor = document.querySelector("#cursor")
body = document.querySelector("body")
buttons = document.querySelectorAll(".btn")
brand = document.querySelector(".brand")
brandSfx = document.querySelector("#brand-audio")
tapSfx = document.querySelector("#tap-audio")

body.addEventListener("mousemove", (e) => 
    cursor.setAttribute("style", "top: " + (e.pageY) + "px; left: " + (e.pageX) + "px;")
)

brand.addEventListener("mouseover", () =>
    brandSfx.play()
)

buttons.forEach((btn) => 
    btn.addEventListener("mouseover", () => 
        cursorToggle()
        tapSfx.play()
    )

    btn.addEventListener("mouseout", () => 
        cursorToggle()
    )
)

cursorToggle = () =>
    cursor.classList.toggle("hover")
    cursor.classList.toggle("highlight")