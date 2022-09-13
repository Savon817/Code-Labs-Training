export default class Home {

    constructor() {
        //When home instance is created call render
        this.render();
    }

    //Render elements onto the page
    render() {
        let appElem = document.getElementById("app");


        appElem.insertAdjacentHTML('beforeend', `<h1 class='text-center'> Social Media Page</h1>`)
    }
}