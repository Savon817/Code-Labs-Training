function createResource(resource) {
    return fetch("http://localhost:3000/resources", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(resource),
    }).then((res) => res.json())
}