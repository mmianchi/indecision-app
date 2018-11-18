console.log('app is running');

const app = {
  title : "Indecision App",
  subtitle : 'use this app',
  option: ['one','two']
}

const templateTitle = <div>
     <h1>{app.title}</h1>
     {app.subtitle && <p>{app.subtitle}</p>}
     {app.option.length > 0 ? <h3>'here is ur options'</h3> : <h3>'no option'</h3>}
   </div>;

 
const user = {
  names: "mahshid",
  age: 107
};

function getlocation(location) {
  if(location){
    return <p>location: {location}</p>;
  }
}


const templateTwo = (
  <div>
    <h1>{user.names ? user.names : 'anonymous'}</h1>
    {((user.age && user.age > 18) && <p>{user.age}</p>)}
    {getlocation(user.location)}
  
  </div>
);
const second =document.getElementById('app');
ReactDOM.render(templateTitle, second);