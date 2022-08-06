import fetch from "cross-fetch";

export async function fetchData() {
    const response = await fetch("https://api.ipify.org")
    const ip = await response.text()
    return ip;
}