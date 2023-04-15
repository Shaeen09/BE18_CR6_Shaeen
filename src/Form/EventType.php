<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType as TypeDateTimeType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, ["attr"=>["class"=>"form-control", "placeholder"=>"please enter event name"]])
            ->add('description', TextType::class, ["attr"=>["class"=>"form-control", "placeholder"=>"description"]])
            ->add('date_time', TypeDateTimeType::class, ["attr"=>["class"=>"form-control", "placeholder"=>"please enter date & time"]])
            ->add('image', TextType::class,  ["attr"=>["class"=>"form-control", "placeholder"=>"image"]])
            ->add('capacity', NumberType::class,  ["attr"=>["class"=>"form-control", "placeholder"=>"capacity"]])
            ->add('contact_email', EmailType::class,  ["attr"=>["class"=>"form-control", "placeholder"=>"enter email"]])
            ->add('contac_phone_number', NumberType::class,  ["attr"=>["class"=>"form-control", "placeholder"=>"enter phonenumber"]])
            ->add('address', TextType::class,  ["attr"=>["class"=>"form-control", "placeholder"=>"address"]])
            ->add('events_url', UrlType::class,  ["attr"=>["class"=>"form-control", "placeholder"=>"url link"]])
            ->add('events_type', ChoiceType::class,['choices'  => [
                'Music' => "Music",
                'Sports' => "Sports",
                'Entertainment' => "Entertainment",
                'Theater' => "Theater",
                'Sightseeing' => "Sightseeing",
            ], "attr"=>["class"=>"form-control"]]
            )
            ->add('save', SubmitType::class, ["attr"=>["class"=>"btn"]])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}