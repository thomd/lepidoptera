/* 
*  jquery <%= name %> plugin
*  
*  author: <%= author %>
*
*/
(function($) {

  //
  // plugin definition
  //
  $.fn.<%= name %> = function(options) {
    
    debug(this);
    
    // merge options into default options
    var opts = $.extend({}, $.fn.<%= name %>.defaults, options);
    
    // iterate through each matched element
    return this.each(function() {
      
      $this = $(this);
      
      // build element specific options
      var o = $.meta ? $.extend({}, opts, $this.data()) : opts;
      
      // TODO
      

    });
  };
  
  
  //
  // private debug function
  //
  function debug(obj) {
    if (window.console && window.console.log)
      window.console.log('<%= name %> selection count: ' + obj.size());
  };
  
  //
  // define function to be called from outside
  //
  $.fn.<%= name %>.foo = function() {

  };

  //
  // plugin defaults
  //
  $.fn.<%= name %>.defaults = {
    property1: 'value1',
    property2: 'value2'
  };

})(jQuery);
