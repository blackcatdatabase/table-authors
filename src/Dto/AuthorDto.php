<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\Authors\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class AuthorDto {
    public function __construct(
        public readonly ?int $id,
        public readonly string $name,
        public readonly string $slug,
        public readonly ?string $bio,
        public readonly ?string $photoUrl,
        public readonly ?string $story,
        public readonly int $booksCount,
        public readonly int $ratingsCount,
        public readonly int $ratingSum,
        public readonly ?string $avgRating,
        public readonly ?\DateTimeImmutable $lastRatingAt,
        public readonly \DateTimeImmutable $createdAt,
        public readonly \DateTimeImmutable $updatedAt,
        public readonly int $version,
        public readonly ?\DateTimeImmutable $deletedAt
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
