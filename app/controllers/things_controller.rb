@@ -29,10 +29,10 @@ class ThingsController < ApplicationController
     respond_to do |format|
       if @thing.save
         format.html { redirect_to @thing, notice: 'Thing was successfully created.' }
-        format.json { render action: 'show', status: :created, location: @thing }
+        format.json { render json: @thing }
       else
         format.html { render action: 'new' }
-        format.json { render json: @thing.errors, status: :unprocessable_entity }
+        format.json { render json: @thing.errors.full_messages, status: :unprocessable_entity }
       end
     end
   end
@@ -43,10 +43,10 @@ class ThingsController < ApplicationController
     respond_to do |format|
       if @thing.update(thing_params)
         format.html { redirect_to @thing, notice: 'Thing was successfully updated.' }
-        format.json { head :no_content }
+        format.json { render json: @thing }
       else
         format.html { render action: 'edit' }
-        format.json { render json: @thing.errors, status: :unprocessable_entity }
+        format.json { render json: @thing.errors.full_messages, status: :unprocessable_entity }
       end
     end
   end