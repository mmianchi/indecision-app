'use strict';

console.log('app is running');

var app = {
  title: "Indecision App",
  subtitle: 'use this app',
  option: ['one', 'two']
};

var templateTitle = React.createElement(
  'div',
  null,
  React.createElement(
    'h1',
    null,
    app.title
  ),
  app.subtitle && React.createElement(
    'p',
    null,
    app.subtitle
  ),
  app.option.length > 0 ? React.createElement(
    'h3',
    null,
    '\'here is ur options\''
  ) : React.createElement(
    'h3',
    null,
    '\'no option\''
  )
);

var user = {
  names: "mahshid",
  age: 107

};

function getlocation(location) {
  if (location) {
    return React.createElement(
      'p',
      null,
      'location: ',
      location
    );
  }
}

var templateTwo = React.createElement(
  'div',
  null,
  React.createElement(
    'h1',
    null,
    user.names ? user.names : 'anonymous'
  ),
  user.age && user.age > 18 && React.createElement(
    'p',
    null,
    user.age
  ),
  getlocation(user.location)
);
var second = document.getElementById('app');
ReactDOM.render(templateTitle, second);
