function appendResourceToDOM(resource){
    const container = document.querySelector(".resources-container");
    const card = document.createElement("div");
    const contentElem = document.createElement("a");

    card.classList.add("card");
    
    contentElem.href = resource.link
    contentElem.target = "_blank";
    contentElem.textContent = resource.content

    card.appendChild(contentElem);
    container.appendChild(card);
};