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

test("it should have a default end date", function(){
  var expected = new Date('Mar 25, 2086');
  var actual = this.subject().get('endDate');
  deepEqual(actual, expected);
});
