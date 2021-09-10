<?php $__env->startSection('panel'); ?>

    <form action="<?php echo e(route('admin.radio.jockey.update', [$jockey->id])); ?>" method="POST" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <div class="row mb-30">


            <div class="col-xl-3 col-lg-5 col-md-5 mb-30"> 

                <div class="card b-radius--10 overflow-hidden box--shadow1">
                    <div class="card-body p-0">
                        <div class="p-3 bg--white">
                            <div class="form-group">
                                <div class="image-upload">
                                    <div class="thumb">
                                        <div class="avatar-preview">
                                            <div class="profilePicPreview-rj">
                                                <button type="button" class="remove-image"><i
                                                        class="fa fa-times"></i></button>
                                            </div>
                                        </div>
                                        <div class="avatar-edit">
                                            <input type="file" class="profilePicUpload" name="image" id="profilePicUpload-user"
                                                accept=".png, .jpg, .jpeg">
                                            <label for="profilePicUpload-user" class="bg--primary"><?php echo app('translator')->get('Upload Profile
                                                Images'); ?></label>
                                            <small class="mt-2 text-facebook"><?php echo app('translator')->get('Supported files'); ?>: <b><?php echo app('translator')->get('jpeg, jpg'); ?></b>.
                                                <?php echo app('translator')->get('Image will
                                                be resized into'); ?> <?php echo e(imagePath()['rj_image']['size']); ?><?php echo app('translator')->get('px'); ?> </small>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="mt-15">
                                <h4 class=""><?php echo e($jockey->full_name); ?></h4>
                                <span class="text--small"><?php echo app('translator')->get('Joined At'); ?>
                                    <strong><?php echo e(date('d M, Y h:i A', strtotime($jockey->created_at))); ?></strong></span>
                                <div>
                                    <?php $__currentLoopData = $jockey->socials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $social): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <a href="<?php echo e($social->url); ?>" title="<?php echo e($social->title); ?>" class="badge social "
                                            style="background:#<?php echo e($social->bgcolor); ?>"><?= $social->icon ?></a>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                           
                                  
                        
                    </div>

                        <div class="col-xl-9 col-lg-7 col-md-7">

                            <div class="row mb-none-30">

                            </div>


                            <div class="card mt-40">
                                <div class="card-body">
                                    <h5 class="card-title mb-50 border-bottom pb-2"><?php echo e($jockey->full_name); ?> <?php echo app('translator')->get('Information'); ?></h5>

                                   

                                        <div class="row">
                                            <div class="col">
                                                <div class="form-group ">
                                                    <label class="form-control-label font-weight-bold"><?php echo app('translator')->get('First Name'); ?> <span
                                                            class="text-danger">*</span></label>
                                                    <input class="form-control" type="text" name="firstname"
                                                           value="<?php echo e($jockey->firstname); ?>">
                                                </div>
                                            </div>

                                            <div class="col">
                                                <div class="form-group">
                                                    <label class="form-control-label  font-weight-bold"><?php echo app('translator')->get('Last Name'); ?> <span
                                                            class="text-danger">*</span></label>
                                                    <input class="form-control" type="text" name="lastname" value="<?php echo e($jockey->lastname); ?>">
                                                </div>
                                            </div>

                                            <div class="col">
                                                <div class="form-group">
                                                    <label class="form-control-label  font-weight-bold"><?php echo app('translator')->get('Designation'); ?> <span
                                                            class="text-danger">*</span></label>
                                                    <input class="form-control" type="text" name="designation" value="<?php echo e($jockey->designation); ?>">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="form-control-label font-weight-bold"><?php echo app('translator')->get('Email'); ?> <span
                                                            class="text-danger">*</span></label>
                                                    <input class="form-control" type="email" name="email" value="<?php echo e($jockey->email); ?>">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label  font-weight-bold"><?php echo app('translator')->get('Mobile Number'); ?> <span
                                                            class="text-danger">*</span></label>
                                                    <input class="form-control" type="text" name="phone" value="<?php echo e($jockey->phone); ?>">
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="form-control-label  font-weight-bold"><?php echo app('translator')->get('About Jockey'); ?><span
                                                            class="text-danger">*</span></label>
                                                    <textarea name="about" id="" cols="30" rows="5"><?php echo e($jockey->about); ?></textarea>
                                                </div>
                                            </div>

                                             <div class="col-md-6">
                                                 <h3><?php echo app('translator')->get('Education'); ?></h3>
                                                 
                                           
                                                <div class="education my-3">
                                                    
                                                <h5><?php echo app('translator')->get('Academic'); ?></h5>
                                               
                                                    <div class="form-group">
                                                        <label for=""><?php echo app('translator')->get('Institution Name'); ?></label>
                                                        <input type="text" name="institution[name]" id="" required value="<?php echo e(__($jockey->education->name)); ?>" class="form-control">
                                                    </div>

                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label for=""><?php echo app('translator')->get('From Year'); ?></label>
                                                                <input type="text" name="institution[from_year]" id="" required value="<?php echo e($jockey->education->from_year); ?>" class="form-control">
                                                            </div>
                                                        </div>

                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label for=""><?php echo app('translator')->get('To Year'); ?></label>
                                                                <input type="text" name="institution[to_year]" id="" required value="<?php echo e($jockey->education->to_year); ?>" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    


                                                    <div class="form-group">
                                                        <label for=""><?php echo app('translator')->get('About Institution'); ?></label>
                                                        <textarea name="institution[about_institution]" id="" cols="30" rows="5" class="form-control"><?php echo e(__($jockey->education->about_institution)); ?></textarea>
                                                    </div>


                                                </div>
                                            
                                            </div>


                                             <div class="col-md-6">
                                                 <h3><?php echo app('translator')->get('Experience'); ?> <a href="" class="btn btn--primary" id="exadd"><i class="fa fa-plus"></i> <?php echo app('translator')->get('Add Another'); ?></a></h3>
                                                 <div class="extraex">

                                                 </div>
                                                <?php $__currentLoopData = $jockey->experience; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ex): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="education my-3">
                                                <h5><?php echo app('translator')->get('Experience'); ?> <?php echo e($loop->iteration); ?></h5>
                                                    <?php
                                                        $lastiteration = $loop->count;
                                                    ?>
                                                    <div class="form-group">
                                                        <label for=""><?php echo app('translator')->get('Institution Name'); ?></label>
                                                        <input type="text" name="company[<?php echo e($loop->iteration); ?>][name]" id="" required value="<?php echo e($ex->name); ?>" class="form-control">
                                                    </div>

                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label for=""><?php echo app('translator')->get('From Year'); ?></label>
                                                                <input type="text" name="company[<?php echo e($loop->iteration); ?>][from_year_ex]" id="" required value="<?php echo e($ex->from_year_ex); ?>" class="form-control">
                                                            </div>
                                                        </div>

                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label for=""><?php echo app('translator')->get('To Year'); ?></label>
                                                                <input type="text" name="company[<?php echo e($loop->iteration); ?>][to_year_ex]" id="" required value="<?php echo e($ex->to_year_ex); ?>" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    


                                                    <div class="form-group">
                                                        <label for=""><?php echo app('translator')->get('About Institution'); ?></label>
                                                        <textarea name="company[<?php echo e($loop->iteration); ?>][responsibility]" id="" cols="30" rows="5" class="form-control"><?php echo e($ex->responsibility); ?></textarea>
                                                    </div>


                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>

                                        </div>
                                        <div class="row my-4" id="gallary">
                                        <?php $__currentLoopData = $jockey->gallary; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $gallary): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $lastiterationGallary = $loop->count;
                                                
                                            ?>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <div class="image-upload">
                                                        <div class="thumb">
                                                            <div class="avatar-preview">
                                                                <div class="profilePicPreview" style='background:url("<?php echo e(getImage('assets/images/rj_gallary/' . $jockey->email . '/' . $gallary)); ?>") '>
                                                                    <button type="button" class="remove-image"><i
                                                                            class="fa fa-times"></i></button>
                                                                </div>
                                                            </div>
                                                            <div class="avatar-edit">
                                                            <input type="file" class="profilePicUpload" name="gallary[]" id="profilePicUpload<?php echo e($key); ?>" value="" accept=".png, .jpg, .jpeg">
                                                            <label for="profilePicUpload<?php echo e($key); ?>" class="bg--primary"><?php echo app('translator')->get('Upload Gallery Images'); ?></label>
                                                                <small class="mt-2 text-facebook"><?php echo app('translator')->get('Supported files'); ?>: <b><?php echo app('translator')->get('jpeg, jpg'); ?></b>. <?php echo app('translator')->get('Image will
                                                                    be resized into'); ?> <?php echo e(imagePath()['rj_image']['size']); ?>px </small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                        <button type="button" class="btn btn--primary mb-4" id="gallary_add"> <i
                                    class="fa fa-plus"></i> <?php echo app('translator')->get('Add Image (if Required)'); ?></button>

                                        <div class="row mt-4">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn--primary btn-block btn-lg"><?php echo app('translator')->get('Update Radio Jockey'); ?>
                                                    </button>
                                                </div>
                                            </div>

                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>



                   

<?php $__env->stopSection(); ?>

<?php $__env->startPush('script'); ?>
                    <script>
                        'use strict'
                         var exlast = "<?php echo e($lastiteration + 1); ?>";
                         var incr = "<?php echo e($lastiterationGallary + 1); ?>";
                        $(function(){
                            $('#exadd').on('click',function(e){                      
                                e.preventDefault();
                                $('.extraex').append(`
                                    <h5>Academic ${++exlast}</h5>
                                    <div class="form-group col-lg-12">
                                              <label>Institution Name</label>
                                              <input class="form-control" type="text" name="institution[${exlast}][name]" required>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="row">

                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label for="">From year</label>
                                                            <input type="text" id="yearPicker" name="institution[${exlast}][from_year]" class="form-control" required>
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label for="">To year</label>
                                                            <input type="text" id="yearPicker" name="institution[${exlast}][to_year]" class="form-control" required>
                                                        </div>
                                                    
                                                    </div>  

                                                </div>
                                                
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                  <label for="">About Institution</label>
                                                  <textarea name="institution[${exlast}][about_institution]" id="" cols="30" rows="10" class="form-control" required></textarea>
                                                </div>
                                            </div>
                                
                                
                                
                                `);
                            })

            
                $('#gallary_add').on('click', function() {
                    $('#gallary').append(`
                                            <div class="col-md-4">
                                                            <div class="form-group">
                                                                    <div class="image-upload">
                                                                        <div class="thumb">
                                                                            <div class="avatar-preview">
                                                                                <div class="profilePicPreview">
                                                                                    <button type="button" class="remove-image"><i class="fa fa-times"></i></button>
                                                                                </div>
                                                                            </div>
                                                                            <div class="avatar-edit">
                                                                                <input type="file" class="profilePicUpload" name="gallary[]" id="profilepicupload${incr}" accept=".png, .jpg, .jpeg" required>
                                                                                <label for="profilepicupload${incr}" class="bg--primary">Upload Gallary Images</label>
                                                                                <small class="mt-2 text-facebook">Supported files: <b>jpeg, jpg</b>. Image will be resized into <?php echo e(imagePath()['rj_gallary']['size']); ?>px </small>


                                                                                
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                        </div>
                                        
                                        
                                        
                                        `);
                    incr++;
                     upload();
                })
            })

        function upload() {
            function proPicURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        var preview = $(input).parents('.thumb').find('.profilePicPreview');
                        $(preview).css('background-image', 'url(' + e.target.result + ')');
                        $(preview).addClass('has-image');
                        $(preview).hide();
                        $(preview).fadeIn(65);
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }
            $(".profilePicUpload").on('change', function() {
                proPicURL(this);
            });

            $(".remove-image").on('click', function() {
                $(this).parents(".profilePicPreview").css('background-image', 'none');
                $(this).parents(".profilePicPreview").removeClass('has-image');
                $(this).parents(".thumb").find('input[type=file]').val('');
            });
        }

                    </script>
<?php $__env->stopPush(); ?>

<?php $__env->startPush('style'); ?>
                    <style>
                    
                    .social{
                        color: #ffffff;
                        padding: 10px 15px;
                        font-size: 16px;
                        margin:10px 2px;
                    }

                     .social:hover{
                        background: #7367f0;
                        color: #ffffff;
                        padding: 10px 15px;
                        font-size: 16px
                    }
                    
                    .gallery-card {
                    position: relative;
                }

                .gallery-card:hover .view-btn {
                    opacity: 1;
                    visibility: visible;
                }

                .gallery-card .view-btn {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background-color: rgba(0, 0, 0, 0.65);
                    color: #ffffff;
                    display: -ms-flexbox;
                    display: flex;
                    -ms-flex-wrap: wrap;
                    flex-wrap: wrap;
                    justify-content: center;
                    align-items: center;
                    font-size: 42px;
                    opacity: 0;
                    visibility: none;
                    -webkit-transition: all 0.3s;
                    -o-transition: all 0.3s;
                    transition: all 0.3s;
                }
                    
                    </style>    
<?php $__env->stopPush(); ?>

<?php $__env->startPush('style'); ?>

                    <style>
                        .profilePicPreview{
                            background-position: center;
                        }
                        .profilePicPreview-rj{
                            width: 100%;
                            height: 310px;
                            display: block;
                            border: 3px solid #f1f1f1;
                            box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.25);
                            border-radius: 10px;
                            background-size: cover !important;
                            background-position: top;
                            background-repeat: no-repeat;
                            position: relative;
                            overflow: hidden;
                            background-image: url("<?php echo e(getImage('assets/images/rj_image/' . $jockey->image)); ?>");
                        }
                    </style>

<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\keppelfm\core\resources\views/admin/jokies/details.blade.php ENDPATH**/ ?>