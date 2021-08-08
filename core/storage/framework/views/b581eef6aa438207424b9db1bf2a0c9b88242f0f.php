<?php $__env->startSection('content'); ?>
    <?php
    $banners = getContent('banner.element');
    ?>
    <!-- hero section start -->
    <section class="hero">
        <div class="hero-slider">
            <?php $__currentLoopData = $banners; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="single-slide bg_img"
                    style="background-image: url(<?php echo e(sectionImage('banner', $item->data_values->background_image)); ?>);">
                    <div class="container">
                        <div class="row <?php echo e($loop->even ? 'justify-content-end' : ''); ?>">
                            <div class="col-lg-4 <?php echo e($loop->even ? 'text-end' : ''); ?>">
                                <h2 class="hero__title" data-animation="fadeInUp" data-delay=".6s">
                                    <?php echo e(__($item->data_values->title)); ?></h2>
                            </div>
                        </div>
                    </div>
                </div><!-- single-slide end -->
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        </div>
    </section>
    <!-- hero section end -->


 

  
<?php echo $__env->make($activeTemplate.'layouts.frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\keppelfm\core\resources\views/templates/basic/home.blade.php ENDPATH**/ ?>