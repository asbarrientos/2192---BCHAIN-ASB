// Abigail Barrientos

export default function ShineOrRain() {
    return(
        <div className={`${isRainy === true ? 'dark' : 'light'}`}>
            <RainOrShine />
        </div>
    );
}
    
function Rainy(){
    return <h1>Bring your umbrella!</h1>
}
    
function Sunny(){
    return <h1>Bring your sunglasses!</h1>
}
const isRainy = true;
    
function RainOrShine(props) {
    const isRainy = props.isRainy;
    return isRainy ? <Rainy /> : <Sunny />
}