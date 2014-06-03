import {test, moduleForComponent} from 'ember-qunit';

moduleForComponent('countdown-clock', 'CountdownClockComponent', {
  setup: function(){
    Timecop.install();
  },

  teardown: function(){
    Timecop.uninstall();
  }
});

test("it should exist", function(){
  ok(this.subject());
});

test("it should have a default end date", function(){
  var expected = new Date('Mar 25, 2086');
  var actual = this.subject().get('endDate');
  deepEqual(actual.getTime(), expected.getTime());
});

test("_isLeapYear", function(){
  var component = this.subject();
  equal(component._isLeapYear(new Date('2014')), false);
  equal(component._isLeapYear(new Date('2016')), true);
});

test("_daysInPreviousMonth", function(){
  var component = this.subject();
  equal(component._daysInPreviousMonth(new Date('May 2014')), 30);
});

test("it should calculate YMWDHMS", function(){
  var base = new Date('Dec 21, 2012 00:00:00 GMT');
  Timecop.freeze(base);

  var component = this.subject();

  var date = new Date(base);
  date.setUTCFullYear(date.getUTCFullYear() + 1);
  date.setUTCMonth(date.getUTCMonth() + 2);
  date.setUTCDate(date.getUTCDate() + (7 * 3));
  date.setUTCDate(date.getUTCDate() + 4);
  date.setUTCHours(date.getUTCHours() + 5);
  date.setUTCMinutes(date.getUTCMinutes() + 6);
  date.setUTCSeconds(date.getUTCSeconds() + 7);

  Ember.run(function(){
    component.set('endDate', date);
  });

  deepEqual(component.get('diff'), [1, 2, 3, 4, 5, 6, 7]);
});
