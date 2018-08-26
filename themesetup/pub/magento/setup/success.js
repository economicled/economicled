/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

'use strict';
angular.module('success', ['ngStorage'])
    .controller('successController', ['$scope', '$localStorage', function ($scope, $localStorage) {
        $scope.url = {
            front: '',
            admin: ''
        };
        $scope.db     = {
            name: '******',
            user: '******'
        };
        $scope.admin  = {
            username: '******',
            email: '******',
        },
        $scope.config = $localStorage.config;
        if ($scope.config.https.front) {
            $scope.url.front = $scope.config.https.text;
        } else {
            $scope.url.front = $scope.config.address.actual_base_url;
        }
        $scope.config.encrypt.key = '******';
        $scope.messages = $localStorage.messages;
        $localStorage.$reset();
        var btns = document.getElementsByClassName('btn-prime');
        for(var i = 0; i < btns.length; i++){
            btns[i].style.display = "none";
        }
    }]);
