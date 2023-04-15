<?php

namespace App\Controller;

use App\Entity\Event;
use App\Form\EventType;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EventController extends AbstractController
{
    #[Route('/', name: 'app_event')]
    public function index(ManagerRegistry $doctrine): Response
    {   
        $events = $doctrine->getRepository(Event::class)->findAll();

        return $this->render('event/index.html.twig', [
            "events" => $events
        ]);
    }

    #[Route('/details/{id}', name: 'app_event_details')]
    public function detailsEvent(ManagerRegistry $doctrine, $id): Response
    {   
        $event = $doctrine->getRepository(Event::class)->find($id);

        return $this->render('event/details.html.twig', [
            "event" => $event
        ]);
    }

    #[Route('/create', name: 'app_event_create')]
    public function createEvent(ManagerRegistry $doctrine, Request $request): Response
    {   
        $event = new Event();

        $form = $this->createForm(EventType::class, $event);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            // $form->getData() holds the submitted values
            // but, the original `$task` variable has also been updated
            $event = $form->getData();

            $em = $doctrine->getManager();

            $em->persist($event);
            $em->flush();

            return $this->redirectToRoute('app_event');
        }

        return $this->render('event/new.html.twig', [
        
            'form' => $form->createView()
        ]);
    }

    #[Route('/edit/{id}', name: 'app_event_edit', methods:['Get', 'POST'])]
    public function editEvent(ManagerRegistry $doctrine, Request $request, $id): Response
    {   
        $event = $doctrine->getRepository(EventType::class)->find($id);

        $form = $this->createForm(EventType::class, $event);
         $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()) {
           
            $event->save($event, true);
            $event = $form->getData();

            $em = $doctrine->getManager();

            $em->persist($event);
            $em->flush();

            return $this->redirectToRoute('app_event');
        }

        return $this->render('event/edit.html.twig', [
            'form' => $form->createView()
        ]);
    }

    #[Route('/delete/{id}', name: 'app_event_delete')]
    public function deleteEvent(ManagerRegistry $doctrine, $id): Response
    {   
        $event = $doctrine->getRepository(Event::class)->find($id);
        $em = $doctrine->getManager();

        $em->remove($event);
        $em->flush();
        return $this->redirectToRoute('app_event');
    }
}