// Copyright 2019 The MACE-KIT Authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef MACEKIT_INCLUDE_EXPORT_H_
#define MACEKIT_INCLUDE_EXPORT_H_

#ifndef MACEKIT_EXPORT
#ifdef _MSC_VER
#define MACEKIT_EXPORT
#else
#define MACEKIT_EXPORT __attribute__((visibility("default")))
#endif
#endif

#endif  // MACEKIT_INCLUDE_EXPORT_H_
