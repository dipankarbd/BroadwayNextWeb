﻿(function ($, undefined) {
    //ko.bindingHandlers['modalOld'] = {
    //    init: function (element, valueAccessor, allBindingsAccessor) {
    //        var allBindings = allBindingsAccessor();
    //        var $element = $(element);
    //        $element.addClass('hide modal');

    //        if (allBindings.modalOptions) {
    //            if (allBindings.modalOptions.beforeClose) {
    //                $element.on('hide', function () {
    //                    return allBindings.modalOptions.beforeClose();
    //                });
    //            }
    //        }

    //        //return ko.bindingHandlers['with'].init.apply(this, arguments);
    //    },
    //    update: function (element, valueAccessor) {
    //        var value = ko.utils.unwrapObservable(valueAccessor());

    //        //var returnValue = ko.bindingHandlers['with'].update.apply(this, arguments);

    //        if (value) {
    //            $(element).modal('show');
    //        } else {
    //            $(element).modal('hide');
    //        }

    //        //return returnValue;
    //    }
    //};   
      
    ko.bindingHandlers.datepicker = {
        init: function (element, valueAccessor, allBindingsAccessor) {
            //initialize datepicker with some optional options
            var options = allBindingsAccessor().datepickerOptions || {};
            $(element).datepicker(options);
            //--Format the value of the actual observable at the beginning
            var value = valueAccessor();
            if (ko.isObservable(value)) {
                if (_.isString(value())) {
                    var formattedDate = moment(value()).format("MM/DD/YYYY");
                    value(new Date(formattedDate));
                }
            }
            //--
            //when a user changes the date, update the view model
            ko.utils.registerEventHandler(element, "changeDate", function (event) {
                var value = valueAccessor();
                if (ko.isObservable(value)) {
                    value(event.date);
                }
            });

            ko.utils.registerEventHandler(element, "change", function () {
                var value = valueAccessor();
                if (ko.isObservable(value)) {
                    value(new Date(element.value));
                }
            });
        },
        update: function (element, valueAccessor) {
            var widget = $(element).data("datepicker");
            //when the view model is updated, update the widget
            if (widget) {
                widget.date = ko.utils.unwrapObservable(valueAccessor());

                if (!widget.date) {
                    return;
                }
                if (_.isString(widget.date)) {
                    var formattedDate = moment(widget.date).format("MM/DD/YYYY")
                    widget.date = new Date(formattedDate);
                    //widget.date = new Date(widget.date);
                }
                widget.set();
            }
        }
    };


    ko.bindingHandlers.modal = {
        init: function (element, valueAccessor, allBindingsAccessor) {

            var allBindings = allBindingsAccessor();
            var $element = $(element);
            $element.addClass('hide modal');

            return ko.bindingHandlers.with.init.apply(this, arguments);
        },
        update: function (element, valueAccessor) {

            var value = ko.utils.unwrapObservable(valueAccessor());
            if (value) {
                $(element).modal('show');
            } else {
                $(element).modal('hide');
            }

            return ko.bindingHandlers.with.update.apply(this, arguments);
        }
    };

    ko.bindingHandlers.readOnly = {
        update: function (element, valueAccessor) {
            var value = ko.utils.unwrapObservable(valueAccessor());
            if (value) {
                element.setAttribute("readOnly", true);
            } else {
                element.removeAttribute("readOnly");
            }
        }
    };

    ko.bindingHandlers.date = {
        //init: function (element, valueAccessor, allBindingsAccessor, viewModel) {
        //    var jsonDate = ko.utils.unwrapObservable(valueAccessor());
        //    var value = moment(jsonDate).format("MM-DD-YYYY");
        //    element.innerHTML = value;
        //},
        update: function (element, valueAccessor, allBindingsAccessor, viewModel) {
            //alert(ko.utils.unwrapObservable(valueAccessor));
            var jsonDate = ko.utils.unwrapObservable(valueAccessor());
            if (jsonDate) {
                var regularDate = moment(jsonDate).format("MM/DD/YYYY");
                $(element).val(regularDate);
            }
        }

    };

    ko.bindingHandlers.date1 = {
        init: function (element, valueAccessor, allBindingsAccessor, viewModel) {
            var jsonDate = valueAccessor();
            var value = new Date(parseInt(jsonDate.substr(6),10));
            var ret = value.getMonth() + 1 + "/" + value.getDate() + "/" + value.getFullYear();
            element.innerHTML = ret;
        },
        update: function (element, valueAccessor, allBindingsAccessor, viewModel) {

        }
    };

    ko.bindingHandlers.maskedvalue = {
        init: function (element, valueAccessor, allBindingAccessor, data, context) {
            var filter = allBindingAccessor().maskFilter || {};
            $(element).mask(filter);
            ko.bindingHandlers.value.init(element, valueAccessor, allBindingAccessor);
        },
        update: function (element, valueAccessor, allBindingAccessor, data) {
            var value = ko.utils.unwrapObservable(valueAccessor());
            if (value) {
                var newVal = value.replace(/[^\d]/g, '');   //remove everything except the numerics
                if (newVal) {
                    //console.debug(newVal);
                    var valueAcc = valueAccessor();
                    valueAcc(newVal);
                    ko.bindingHandlers.value.update(element, valueAcc); // update with the clean string
                }
                $(element).val(value);  //re-set the element text so that it remains masked
            }
        }
    };


    ko.bindingHandlers.gridpager = {
        init: function (element, valueAccessor, allBindingsAccessor, viewModel, bindingContext) {
            var value = valueAccessor(), allBindings = allBindingsAccessor();

            //allBindings.datasource();

            $(element).addClass("pagination");
            $(element).append("<ul></ul>");

            //handle disposal
            ko.utils.domNodeDisposal.addDisposeCallback(element, function () {
                $(element).empty();
            });
        },
        update: function (element, valueAccessor, allBindingsAccessor, viewModel, bindingContext) {
            var value = valueAccessor(), allBindings = allBindingsAccessor();
            var valueUnwrapped = ko.utils.unwrapObservable(value);

            var totalPages = valueUnwrapped;
            var pageSize = ko.utils.unwrapObservable(allBindings.pagesize) || 10;
            var curentPage = ko.utils.unwrapObservable(allBindings.currentpage) || 1;

            //console.log('total pages:' + totalPages + ', currentPage:' + curentPage + ', pageSize:' + pageSize);
            var pagerItemCount = 5;
            var offset = Math.ceil(pagerItemCount / 2) - 1;
            var start = curentPage - offset;
            if (start < 1) start = 1;

            var end = start + pagerItemCount - 1;
            if (end > totalPages) end = totalPages;

            if (totalPages < 2) return;

            var i = 0;

            $(element).find("ul").empty();
            if (curentPage > 1) {
                $(element).find("ul").append('<li><a href="#">&lt;&lt;</a></li>');
                $(element).find("ul").append('<li><a href="#">&lt;</a></li>');

                if (curentPage - pagerItemCount > 0) {
                    $(element).find("ul").append('<li><a class="left" href="#">...</a></li>');
                }
            }
            for (i = start; i <= end; i++) {
                if (i === curentPage) {
                    $(element).find("ul").append('<li  class="active"><a href="#">' + i + '</a></li>');
                } else {
                    $(element).find("ul").append('<li><a href="#">' + i + '</a></li>');
                }
            }
            if (curentPage < totalPages) {
                if (curentPage + pagerItemCount < totalPages) {
                    $(element).find("ul").append('<li><a class="right" href="#">...</a></li>');
                }
                $(element).find("ul").append('<li><a href="#">&gt;</a></li>');
                $(element).find("ul").append('<li><a href="#">&gt;&gt;</a></li>');
            }
            $(element).find("ul li a").click(function () {
                var selectedPage = $(this).text();
                if (selectedPage === "<") {
                    curentPage = curentPage - 1;
                    if (curentPage < 1) curentPage = 1;
                    allBindings.currentpage(curentPage);
                }
                else if (selectedPage === ">") {
                    curentPage = curentPage + 1;
                    if (curentPage > totalPages) curentPage = totalPages;
                    allBindings.currentpage(curentPage);
                }
                else if (selectedPage === "<<") {
                    curentPage = 1;
                    allBindings.currentpage(curentPage);
                }
                else if (selectedPage === ">>") {
                    curentPage = totalPages;
                    allBindings.currentpage(curentPage);
                }
                else if (selectedPage === "...") {
                    if ($(this).attr('class') === 'left') {
                        curentPage = curentPage - pagerItemCount;
                        if (curentPage < 1) curentPage = 1;
                    }
                    else if ($(this).attr('class') === 'right') {
                        curentPage = curentPage + pagerItemCount;
                        if (curentPage > totalPages) curentPage = totalPages;
                    }
                    allBindings.currentpage(curentPage);
                }
                else {
                    allBindings.currentpage(parseInt(selectedPage,10));
                }
                allBindings.datasource();
            });

        }
    };

    ko.bindingHandlers.wysihtml5 = {
        control: "",
        init: function (element, valueAccessor, allBindingsAccessor, viewModel) {
            control = $(element).wysihtml5(
            {
                "font-styles": false, //Font styling, e.g. h1, h2, etc. Default true
                "font-size": true, // Font size e.g. small, large 
                "emphasis": true, //Italics, bold, etc. Default true                
                "lists": false, //(Un)ordered lists, e.g. Bullets, Numbers. Default true
                "html": false, //Button which allows you to edit the generated HTML. Default false
                "link": false, //Button to insert a link. Default true
                "image": false, //Button to insert an image. Default true,
                "color": false, //Button to change color of font  

                "events": {                    
                    "change": function () {
                        var observable = valueAccessor();
                        observable(control.getValue());
                    },
                    "blur:composer": function () {
                        //console.log("aftercommand:composer:>>>>");
                        var observable = valueAccessor();
                        observable(control.getValue());
                    },
                    "aftercommand:composer": function () {
                        var observable = valueAccessor();
                        observable(control.getValue());
                    }
                }
            }).data("wysihtml5").editor;


        },
        update: function (element, valueAccessor, allBindingsAccessor, viewModel) {
            var content = valueAccessor();
            if (content != undefined) {
                //console.log("update");
                control.setValue(content());
            }
            //else {
            //    console.log("undefined");
            //}
        }
    };

    //*************** Star Rating(jquery Plugin) *********************//// 

    ko.bindingHandlers.starRating = {
        init: function (element, valueAccessor, allBindingsAccessor, viewModel) {


            $(element).addClass("starRating");
            for (var i = 0; i < 5; i++)
                $("<span>").appendTo(element);

            // Handle mouse events on the stars
            $("span", element).each(function (index) {
                $(this).hover(
                    function () { $(this).prevAll().add(this).addClass("hoverChosen") },
                    function () { $(this).prevAll().add(this).removeClass("hoverChosen") }
                ).click(function () {
                    var observable = valueAccessor();  // Get the associated observable
                    observable(index + 1);               // Write the new rating to it
                });
            });


        },
        update: function (element, valueAccessor, allBindingsAccessor, viewModel) {
            // Give the first x stars the "chosen" class, where x <= rating

            var observable = valueAccessor();
            $("span", element).each(function (index) {
                $(this).toggleClass("chosen", index < observable());
            });

        }
    };

})(jQuery);