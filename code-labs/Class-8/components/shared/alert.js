export default class Alert{
    constructor(){
        this.render();
    }

    render(){
        let alertElem = document.getElementById("alert");

        let alert = response.success ?
        alert.Elem.innerHTML += `
        <div class="alert alert-danger" role="alert">
            A simple danger alert—check it out!
        </div>
        `
    }
}