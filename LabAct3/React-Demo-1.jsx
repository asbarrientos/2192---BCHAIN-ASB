// Abigail Barrientos
import './React.css';

function Greeting(){
    return(
        <h1>Hello! I am a standard function.</h1>
    );
}

const ArrowGreeting = () => (
    <h1>Hello! I am an arrow function.</h1>
);

function ShinyButton(){
    const handleClick = () => {
        alert("You clicked me!");
    }
    return(
        <div class="container1">
        <button onClick={handleClick}>
            Click This Button!
        </button>
        </div>
    );
}

export default ShinyButton;


