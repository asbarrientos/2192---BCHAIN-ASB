// Abigail Barrientos

function Rainy(){
    return(
    <h1>Bring your umbrella!</h1>
    );
}
    
function RainOrShine(props){
    const isRainy = props.isRainy;
    if(isRainy){
        return(
            <Rainy />
    );
}
    return(
        <h1>No rain today</h1>
    );
}

export default function Demo2(){
    return(
        <div>
            <RainOrShine isRainy={true}/>
        </div>
    )
}