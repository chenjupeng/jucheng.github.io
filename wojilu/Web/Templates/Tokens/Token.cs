﻿/*
 * Copyright 2010 www.wojilu.com
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

using System;
using System.Collections.Generic;
using System.Text;

namespace wojilu.Web.Templates.Tokens {

    public abstract class Token {

        private String _name;
        private String _value;

        public String getName() { return _name; }
        public void setName( String name ) { _name = name; }

        public String getValue() { return _value; }
        public void setValue( String value ) { _value = value; }

        private int _tokenType = TokenType.String;
        public int getType() { return _tokenType; }
        public void setType( int tokenType ) { _tokenType = tokenType; }

        public abstract void appendData( StringBuilder sb, ContentBlock block, BlockData blockdata );

    }







}
