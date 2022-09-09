function changeBackground(color){
    document.body.style.backgroundColor = color

}

function colorChanged(){
    console.log(this.value);
    changeBackground(this.value);
}

const colorPicker = document.getElementById("colorPicker");
colorPicker.addEventListener("change", colorChanged);

document.getElementById("colorForm").addEventListener("submit", () => {
    console.log("Form submitted");

    document.createElement('p');
    p.innerHtml = "The form submission";
    document.appendChild(p);
})