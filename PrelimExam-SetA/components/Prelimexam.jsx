// Abigail Barrientos
import './Prelimexam.css'

function Prelim(){
    return(
    <div>
        <h1>Things to Bring</h1>
        <hr />  
        <h2 className="Take" >My Strawhat</h2>
        <h2 className="Take">Gum gum fruit</h2>
        <h2 className="NotTake">The Red Vest</h2>
    </div>
    );
}

function NotPrelim(props){
    const isPrelim = props.isPrelim;
    if(isPrelim){
        return(
            <Prelim/>
        );
    }
    return(
    <div>
        <h1>Things to Bring</h1>
        <hr /> 
        <h2>My Strawhat</h2>
        <h2>Gum gum fruit</h2>
        <h2>The Red Vest</h2>
    </div>
    );
}

export default function App() {
    return(
        <div>
            <NotPrelim
                isPrelim={false}
            />
        </div>
    )
}
