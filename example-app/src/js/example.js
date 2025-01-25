import { ShareSafari } from 'capacitor-share-safari';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    ShareSafari.echo({ value: inputValue })
}
