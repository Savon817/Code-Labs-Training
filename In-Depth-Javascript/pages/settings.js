export default class Settings {
    constructor() {
        this.render();
    }

    render() {
        let appElem = document.getElementById("app");

        appElem.insertAdjacentHTML('beforeend', `<h1 class='text-center'>Settings</h1>`)

    }
}