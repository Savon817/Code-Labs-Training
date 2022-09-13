import Home from "../pages/home.js";
import Settings from "../pages/settings.js";
export default class Navbar {
    constructor() {
        this.render();
        this.addEventListeners();
    }

    render() {
        let appElem = document.getElementById('app');

        appElem.insertAdjacentHTML('beforeend', `
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" >Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                <a class="nav-link active" aria-current="page" id='home'>Home</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" id='settings'>Settings</a>
                </li>
                <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle"  id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Dropdown
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" >Action</a></li>
                    <li><a class="dropdown-item" >Another action</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" >Something else here</a></li>
                </ul>
                </li>
                <li class="nav-item">
                <a class="nav-link disabled"  tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            </div>
        </div>
        </nav>
        `)

    }

    addEventListeners() {
        // declare variable/access elements
        let homeElem = document.getElementById('home');
        let settingsElem = document.getElementById('settings');
        let appElem = document.getElementById('app');

        //attach event listeners
        homeElem.addEventListener('click', () => {
           //clear the app element
           appElem.innerHTML = '';
           //reinitialize the navbar and home
           new Navbar();
           new Home();
        });

        settingsElem.addEventListener('click', () => {
            //clear the app element
            appElem.innerHTML = '';
            //reinitialize the navbar and settings
            new Navbar();
            new Settings();
        });
    }
}