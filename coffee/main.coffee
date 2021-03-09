feather.replace()

body = document.querySelector("body")
cursor = document.querySelector("#cursor")
buttons = document.querySelectorAll(".btn")
brand = document.querySelector(".brand")
audio = document.querySelectorAll("audio")

body.addEventListener("mousemove", (e) => 
    cursor.setAttribute("style", "top: " + (e.pageY) + "px; left: " + (e.pageX) + "px;")
)

brand.addEventListener("mouseover", () =>
    tryPlay(audio[0])
)

buttons.forEach((btn) => 
    btn.addEventListener("mouseover", () => 
        cursorToggle()
        tryPlay(audio[1])
    )

    btn.addEventListener("mouseout", () => 
        cursorToggle()
    )
)

cursorToggle = () =>
    cursor.classList.toggle("hover")
    cursor.classList.toggle("highlight")

tryPlay = (audio) =>
    try
            await audio.play()
        catch e
            console.log("Couldn't play")