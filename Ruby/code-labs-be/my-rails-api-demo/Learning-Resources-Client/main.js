getResources().then((data) => {
    console.log(data);
    data.forEach((resource) => {
        appendResourceToDOM(resource);
    });
});

const onCreateResource = (e) => {
    debugger
    e.preventDefault();
    const content = e.target.content.value;
    const link = e.target.link.value;
    const resource = { link, content };
    createResource(resource).then((data) => {
        if(data.errors){
            console.log(data.errors);
        } else{
            appendResourceToDOM(data);
        }
    });
}