<?php

namespace App\Entity;
use App\Repository\EventRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EventRepository::class)]
class Event
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 50)]
    private ?string $name = null;

    #[ORM\Column(length: 50)]
    private ?string $description = null;

    #[ORM\Column(length: 255)]
    private ?string $image = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 5, scale: 2)]
    private ?string $capacity = null;

    #[ORM\Column(length: 25)]
    private ?string $contact_Email = null;

    #[ORM\Column]
    private ?int $contact_phone_number = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $date_Time = null;

    #[ORM\Column(length: 255)]
    private ?string $address = null;

    #[ORM\Column(length: 255)]
    private ?string $events_url = null;

    #[ORM\Column(length: 20)]
    private ?string $events_Type = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getCapacity(): ?string
    {
        return $this->capacity;
    }

    public function setCapacity(string $capacity): self
    {
        $this->capacity = $capacity;

        return $this;
    }

    public function getContactEmail(): ?string
    {
        return $this->contact_Email;
    }

    public function setContactEmail(string $contact_Email): self
    {
        $this->contact_Email = $contact_Email;

        return $this;
    }

    public function getContactPhoneNumber(): ?int
    {
        return $this->contact_phone_number;
    }

    public function setContactPhoneNumber(int $contact_phone_number): self
    {
        $this->contact_phone_number = $contact_phone_number;

        return $this;
    }

    public function getDateTime(): ?\DateTimeInterface
    {
        return $this->date_Time;
    }

    public function setDateTime(\DateTimeInterface $date_Time): self
    {
        $this->date_Time = $date_Time;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(string $address): self
    {
        $this->address = $address;

        return $this;
    }

    public function getEventsUrl(): ?string
    {
        return $this->events_url;
    }

    public function setEventsUrl(string $events_url): self
    {
        $this->events_url = $events_url;

        return $this;
    }

    public function getEventsType(): ?string
    {
        return $this->events_Type;
    }

    public function setEventsType(string $events_Type): self
    {
        $this->events_Type = $events_Type;

        return $this;
    }
}
