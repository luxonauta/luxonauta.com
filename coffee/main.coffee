feather.replace()

cursor = document.querySelector("#cursor")
body = document.querySelector("body")
buttons = document.querySelectorAll(".btn")

body.addEventListener("mousemove", (e) => 
    cursor.setAttribute("style", "top: " + (e.pageY) + "px; left: " + (e.pageX) + "px;")
)

buttons.forEach((btn) => 
    btn.addEventListener("mouseover", () => 
        cursorToggle()
    )

    btn.addEventListener("mouseout", () => 
        cursorToggle()
    )
)

cursorToggle = () =>
    cursor.classList.toggle("hover")
    cursor.classList.toggle("highlight")