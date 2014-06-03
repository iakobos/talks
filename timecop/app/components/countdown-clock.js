export default Ember.Component.extend({
  endDate: new Date('Mar 25, 2086'),

  diff: function(){
    var now = new Date();
    var endDate = this.get('endDate');
    return this._dateDiff(endDate, now);
  }.property('endDate'),

  _isLeapYear: function(date){
    var year = date.getUTCFullYear();
    return (year%4) === 0 || (year%100) === 0 || (year%400) === 0;
  },

  _daysInPreviousMonth: function(date){
    var daysPerMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    var month = date.getUTCMonth();
    if(month === 1 && this._isLeapYear(date)){
      return 29;
    } else {
      return daysPerMonth[month - 1];
    }
  },

  _dateDiff: function(later, earlier){
    var years = later.getUTCFullYear() - earlier.getUTCFullYear();
    var months = later.getUTCMonth() - earlier.getUTCMonth();
    var days = later.getUTCDate() - earlier.getUTCDate();
    var hours = later.getUTCHours() - earlier.getUTCHours();
    var minutes = later.getUTCMinutes() - earlier.getUTCMinutes();
    var seconds = later.getUTCSeconds() - earlier.getUTCSeconds();
    var weeks = 0;

    if (seconds < 0){
      minutes -= 1;
      seconds += 60;
    }
    if (minutes < 0){
      hours -= 1;
      minutes += 60;
    }
    if (hours < 0){
      days -= 1;
      hours += 24;
    }
    if (days < 0){
      months -= 1;
      days += this._daysInPreviousMonth(later);
    }
    if (days >= 7){
      weeks = Math.floor( days / 7 );
      days = days % 7;
    }
    if (months < 0){
      years -= 1;
      months += 12;
    }

    return [years, months, weeks, days, hours, minutes, seconds];
  }

});
