import {test, moduleForComponent} from 'ember-qunit';

moduleForComponent('countdown-clock', 'CountdownClockComponent', {});

test("it should exist", function(){
  ok(this.subject());
});

test("it should show YMWDHMS", function(){
  this.$(); // renders the component
  var component = this.subject();

  var parts = ['years', 'months', 'weeks', 'days', 'hours', 'minutes', 'seconds'];

  parts.forEach(function(p){
    var digit = component.$('.' + p + ' .digits span').text();
    strictEqual(digit, "00");
  });
});
